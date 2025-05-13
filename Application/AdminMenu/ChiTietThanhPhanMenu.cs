﻿//using Application.Core;
//using Domain;
//using MediatR;
//using Persistence;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using static Dapper.SqlMapper;

//namespace Application.AdminMenu
//{
//    public class ChiTietThanhPhanMenu
//    {
//        public class Query : IRequest<Result<AdminNavItemModel>>
//        {
//            public int MenuId { get; set; }
//        }

//        public class Handler : IRequestHandler<Query, Result<AdminNavItemModel>>
//        {
//            private readonly DataContext _context;
//            public Handler(DataContext context)
//            {
//                _context = context;
//            }
//            public async Task<Result<AdminNavItemModel>> Handle(Query request, CancellationToken cancellationToken)
//            {
//                try
//                {
//                    Domain.TB_AdminMenu objMenu = await _context.TB_AdminMenu.FindAsync(request.MenuId);

//                    if (objMenu == null)
//                    {
//                        throw new Exception("Không tìm thấy dữ liệu");
//                    }

//                    AdminNavItemModel result;

//                    if (!objMenu.ParentId.HasValue)
//                    {
//                        result = new AdminNavItemModel
//                        {
//                            Id = objMenu.Id,
//                            AreaName = objMenu.AreaName,
//                            ControllerName = objMenu.ControllerName,
//                            ActionName = objMenu.ActionName,
//                            Title = objMenu.Title,
//                            IsLeaf = objMenu.IsLeaf
//                        };
//                        return Result<AdminNavItemModel>.Success(result);
//                    }

//                    AdminNavSubItemModel objSub = new AdminNavSubItemModel
//                    {
//                        Id = objMenu.Id,
//                        AreaName = objMenu.AreaName,
//                        ControllerName = objMenu.ControllerName,
//                        ActionName = objMenu.ActionName,
//                        Title = objMenu.Title,
//                        IsLeaf = objMenu.IsLeaf
//                    };

//                    Domain.TB_AdminMenu objMenuParent = await _context.TB_AdminMenu.FindAsync(objMenu.ParentId);

//                    if (objMenuParent == null)
//                    {
//                        throw new Exception("Không tìm thấy dữ liệu cha");
//                    }

//                    result = new AdminNavItemModel
//                    {
//                        Id = objMenuParent.Id,
//                        AreaName = objMenuParent.AreaName,
//                        ControllerName = objMenuParent.ControllerName,
//                        ActionName = objMenuParent.ActionName,
//                        Title = objMenuParent.Title,
//                        IsLeaf = objMenuParent.IsLeaf,
//                        ListChilds = new List<AdminNavSubItemModel>
//                        {
//                            objSub
//                        }
//                    };

//                    return Result<AdminNavItemModel>.Success(result);
//                }
//                catch (Exception ex)
//                {
//                    return Result<AdminNavItemModel>.Failure(ex.Message);
//                }
//            }
//        }
//    }
//}

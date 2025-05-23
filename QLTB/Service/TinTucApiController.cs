using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using QLTB.Interface;
using QLTB.Repository;
using System.Net;

namespace QLTB.Services
{
    [Route("api/[controller]")]
    public class TinTucApiController : Controller
    {
        public readonly ITinTucRepository _tinTucRepository;
        public TinTucApiController(ITinTucRepository tinTucRepository)
        {
            _tinTucRepository = tinTucRepository;
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetAllBaiViet")]
        public async Task<IActionResult> GetAllBaiViet(int moduleId, int tabId)
        {
            try
            {
                var result = await _tinTucRepository.GetAllBaiViet();
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetBaiVietById/{id}")]
        public async Task<IActionResult> GetBaiVietById(Guid id)
        {
            try
            {
                var result = await _tinTucRepository.GetBaiVietById(id);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetLatestNews")]
        public async Task<IActionResult> GetLatestNews()
        {
            try
            {
                var result = await _tinTucRepository.GetLatestNews(4);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetServiceNews")]
        public async Task<IActionResult> GetServiceNews()
        {
            try
            {
                var result = await _tinTucRepository.GetServiceNews(6);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetTrainingNews")]
        public async Task<IActionResult> GetTrainingNews()
        {
            try
            {
                var result = await _tinTucRepository.GetTrainingNews();
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetProductNews")]
        public async Task<IActionResult> GetProductNews()
        {
            try
            {
                var result = await _tinTucRepository.GetProductNews();
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}

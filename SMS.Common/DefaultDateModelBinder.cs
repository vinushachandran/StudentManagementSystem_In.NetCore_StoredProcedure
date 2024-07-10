using Microsoft.AspNetCore.Mvc.ModelBinding;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.Common
{
    public class DefaultDateModelBinder:IModelBinder
    {
        public Task BindModelAsync(ModelBindingContext bindingContext)
        {
            var valueProviderResult = bindingContext.ValueProvider.GetValue(bindingContext.ModelName);
            if (valueProviderResult != ValueProviderResult.None)
            {
                var dateValue = valueProviderResult.FirstValue;
                if (DateTime.TryParseExact(dateValue, DateFormat.defaultDateFormat, CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime parsedDate))
                {
                    bindingContext.Result = ModelBindingResult.Success(parsedDate);
                    return Task.CompletedTask;
                }
                bindingContext.ModelState.AddModelError(bindingContext.ModelName, $"Invalid date format. Please use {DateFormat.defaultDateFormat}");
            }
            bindingContext.Result = ModelBindingResult.Failed();
            return Task.CompletedTask;
        }
    }
}

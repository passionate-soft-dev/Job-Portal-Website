<?php

namespace App\Http\Requests\Review;

use App\Http\Requests\CoreRequest;

class CreateRequest extends CoreRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = [
            'textarea' => ['required'],
            'rating' => ['required'],
        ];

        return $rules;
    }

    public function messages()
    {
        return
        [
            //
        ];
    }
}

Rails.application.routes.draw do
  root              to: 'find_the_dog#landing'

  get 'questions',  to: 'find_the_dog#questions'
  get 'about',  	to: 'find_the_dog#about'
  post 'result',    to: 'find_the_dog#doing'
  get 'result',     to: 'find_the_dog#result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

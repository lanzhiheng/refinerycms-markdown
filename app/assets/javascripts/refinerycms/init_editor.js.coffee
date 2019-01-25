document.addEventListener 'DOMContentLoaded', () ->
  document.querySelectorAll('.visual_editor.widest').forEach (element) ->
    new EasyMDE
      element: element

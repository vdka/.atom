# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# Fixes scrolling on space key in atom-text-editor.mini
# fixScrollOnSpace = () =>
#     editorSelector = 'atom-text-editor[mini]'
#
#     handleSpace = (event) =>
#         return if event.keyCode != 32 # do nothing if not a space key
#
#         el = event.target
#         while el and el != this
#             if el instanceof HTMLElement and el.matches(editorSelector)
#                 event.preventDefault()
#                 input = (el.shadowRoot or el).querySelector('.hidden-input')
#                 textEvent = document.createEvent('TextEvent')
#                 textEvent.initTextEvent('textInput', true, true, window, ' ', null, null)
#                 input.dispatchEvent(textEvent)
#                 break
#             else
#                 el = el.parentNode
#
#     atom.workspace.observePaneItems (item) =>
#         process.nextTick () =>
#             item.element.removeEventListener('keypress', handleSpace)
#             item.element.addEventListener('keypress', handleSpace)
#
# fixScrollOnSpace()

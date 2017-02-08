Sub removebookmarks()
Dim bkm As Bookmark
For Each bkm In ActiveDocument.Bookmarks
bkm.Delete
Next bkm
End Sub
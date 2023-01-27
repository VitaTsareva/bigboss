Class vtsareva.sample.PersistentClass Extends %Persistent
{

Property Test As %VarString;

ClassMethod CreateRecord(ByRef id As %Integer) As %Status
{
    set sc=$$$OK
    set objPC=..%New()
    set objPC.Test="Test string"
    set sc=objPC.%Save()
    set id=objPC.%Id()
    return sc
}

/// opens the record by id and reads its property
ClassMethod ReadProperty(id As %Integer) As %Status
{
    Set sc = $$$OK
    #dim obj as vtsareva.sample.PersistentClass
    set obj=..%OpenId(id,,.sc)
    if $ISOBJECT(obj) write obj.Test
    Return sc
}

}

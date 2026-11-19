.class public abstract Lorg/teleal/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DIDLObjectHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/teleal/cling/support/model/DIDLObject;",
        ">",
        "Lorg/teleal/common/xml/SAXParser$Handler<",
        "TI;>;"
    }
.end annotation


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    if-eqz p3, :cond_8

    const-string p1, "title"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/support/model/DIDLObject;->c:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "creator"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/support/model/DIDLObject;->d:Ljava/lang/String;

    return-void

    :cond_1
    const-string p1, "description"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_2
    const-string p1, "publisher"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    new-instance p2, Lorg/teleal/cling/support/model/Person;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_3
    const-string p1, "contributor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    new-instance p2, Lorg/teleal/cling/support/model/Person;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_4
    const-string p1, "date"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_5
    const-string p1, "language"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_6
    const-string p1, "rights"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_7
    const-string p1, "relation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_8
    const-string p3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "writeStatus"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :try_start_0
    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    iget-object p1, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/teleal/cling/support/model/WriteStatus;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/WriteStatus;

    move-result-object p1

    iput-object p1, v0, Lorg/teleal/cling/support/model/DIDLObject;->f:Lorg/teleal/cling/support/model/WriteStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->c:Ljava/util/logging/Logger;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Ignoring invalid writeStatus value: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p1, "class"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object p2, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->e:Lorg/xml/sax/Attributes;

    const-string p3, "name"

    invoke-interface {p0, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void

    :cond_a
    const-string p1, "artist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "role"

    if-eqz p1, :cond_b

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    new-instance p2, Lorg/teleal/cling/support/model/PersonWithRole;

    iget-object v1, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->e:Lorg/xml/sax/Attributes;

    invoke-interface {p0, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_b
    const-string p1, "actor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    new-instance p2, Lorg/teleal/cling/support/model/PersonWithRole;

    iget-object v1, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->e:Lorg/xml/sax/Attributes;

    invoke-interface {p0, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_c
    const-string p1, "author"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    new-instance p2, Lorg/teleal/cling/support/model/PersonWithRole;

    iget-object v1, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->e:Lorg/xml/sax/Attributes;

    invoke-interface {p0, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v1, p0}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_d
    const-string p1, "producer"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    new-instance p2, Lorg/teleal/cling/support/model/Person;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_e
    const-string p1, "director"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    new-instance p2, Lorg/teleal/cling/support/model/Person;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_f
    const-string p1, "longDescription"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_10
    const-string p1, "storageUsed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_11
    const-string p1, "storageTotal"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_12
    const-string p1, "storageFree"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_13
    const-string p1, "storageMaxPartition"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_14
    const-string p1, "storageMedium"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/support/model/StorageMedium;->a(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_15
    const-string p1, "genre"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_16
    const-string p1, "album"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_17
    const-string p1, "playlist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_18
    const-string p1, "region"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_19
    const-string p1, "rating"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RATING;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RATING;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_1a
    const-string p1, "toc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$TOC;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$TOC;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_1b
    const-string p1, "albumArtURI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    iget-object p2, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->e:Lorg/xml/sax/Attributes;

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p3

    if-ge p2, p3, :cond_1d

    invoke-interface {p0, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "profileID"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1c

    new-instance p3, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;

    new-instance v1, Lorg/teleal/cling/support/model/DIDLAttribute;

    invoke-interface {p0, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "urn:schemas-dlna-org:metadata-1-0/"

    const-string v4, "dlna"

    invoke-direct {v1, v3, v4, v2}, Lorg/teleal/cling/support/model/DIDLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/teleal/cling/support/model/DIDLAttribute;)V

    iget-object v1, p1, Lorg/teleal/cling/support/model/DIDLObject$Property;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1d
    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_1e
    const-string p1, "artistDiscographyURI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_1f
    const-string p1, "lyricsURI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_20
    const-string p1, "icon"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ICON;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ICON;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_21
    const-string p1, "radioCallSign"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_22
    const-string p1, "radioStationID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_23
    const-string p1, "radioBand"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_24
    const-string p1, "channelNr"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_25
    const-string p1, "channelName"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_26
    const-string p1, "scheduledStartTime"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_27
    const-string p1, "scheduledEndTime"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_28
    const-string p1, "DVDRegionCode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_29
    const-string p1, "originalTrackNumber"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    return-void

    :cond_2a
    const-string p1, "userAnnotation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_2b
    return-void
.end method

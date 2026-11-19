.class public Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;
.super Lorg/teleal/common/xml/SAXParser$Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/common/xml/SAXParser$Handler<",
        "Lorg/teleal/cling/support/model/DIDLContent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lorg/teleal/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DIDLContent;Lorg/teleal/cling/support/contentdirectory/DIDLParser;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->f:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {p0, p2, p3}, Lorg/teleal/common/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "DIDL-Lite"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/support/model/DIDLContent;

    iget-object p1, p0, Lorg/teleal/cling/support/model/DIDLContent;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/teleal/cling/support/model/DIDLContent;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLContent;->b:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/teleal/cling/support/model/DIDLContent;->a:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    iget-object v1, v0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v1, v1, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    sget-object v2, Lorg/teleal/cling/support/model/container/Album;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lorg/teleal/cling/support/model/container/Album;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/Album;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lorg/teleal/cling/support/model/container/MusicAlbum;->q:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/teleal/cling/support/model/container/MusicAlbum;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto/16 :goto_1

    :cond_1
    sget-object v2, Lorg/teleal/cling/support/model/container/PhotoAlbum;->q:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lorg/teleal/cling/support/model/container/PhotoAlbum;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/PhotoAlbum;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto/16 :goto_1

    :cond_2
    sget-object v2, Lorg/teleal/cling/support/model/container/GenreContainer;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lorg/teleal/cling/support/model/container/GenreContainer;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/GenreContainer;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lorg/teleal/cling/support/model/container/MusicGenre;->q:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lorg/teleal/cling/support/model/container/MusicGenre;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/MusicGenre;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lorg/teleal/cling/support/model/container/MovieGenre;->q:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lorg/teleal/cling/support/model/container/MovieGenre;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/MovieGenre;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto :goto_1

    :cond_5
    sget-object v2, Lorg/teleal/cling/support/model/container/PlaylistContainer;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Lorg/teleal/cling/support/model/container/PlaylistContainer;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto :goto_1

    :cond_6
    sget-object v2, Lorg/teleal/cling/support/model/container/PersonContainer;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lorg/teleal/cling/support/model/container/PersonContainer;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/PersonContainer;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto :goto_1

    :cond_7
    sget-object v2, Lorg/teleal/cling/support/model/container/MusicArtist;->q:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lorg/teleal/cling/support/model/container/MusicArtist;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/MusicArtist;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto :goto_1

    :cond_8
    sget-object v2, Lorg/teleal/cling/support/model/container/StorageSystem;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Lorg/teleal/cling/support/model/container/StorageSystem;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto :goto_1

    :cond_9
    sget-object v2, Lorg/teleal/cling/support/model/container/StorageVolume;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v1, Lorg/teleal/cling/support/model/container/StorageVolume;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/StorageVolume;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto :goto_1

    :cond_a
    sget-object v2, Lorg/teleal/cling/support/model/container/StorageFolder;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lorg/teleal/cling/support/model/container/StorageFolder;

    invoke-direct {v1, v0}, Lorg/teleal/cling/support/model/container/StorageFolder;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    goto :goto_1

    :cond_b
    move-object v1, v0

    :goto_1
    iget-object v0, v0, Lorg/teleal/cling/support/model/container/Container;->o:Ljava/util/List;

    invoke-static {v0}, Lorg/teleal/cling/support/model/DIDLContent;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/teleal/cling/support/model/container/Container;->o:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    iput-object p2, p0, Lorg/teleal/cling/support/model/DIDLContent;->a:Ljava/util/ArrayList;

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lorg/teleal/common/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p3, "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "container"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p3, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/DIDLParser$RootHandler;->f:Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    if-eqz p1, :cond_3

    new-instance p1, Lorg/teleal/cling/support/model/container/Container;

    invoke-direct {p1}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    const-string p2, "id"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    const-string p2, "parentID"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/teleal/cling/support/model/DIDLObject;->b:Ljava/lang/String;

    const-string p2, "childCount"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lorg/teleal/cling/support/model/container/Container;->k:Ljava/lang/Integer;

    :cond_1
    :try_start_0
    sget-object p2, Lorg/teleal/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {p2}, Lorg/teleal/cling/model/types/Datatype$Builtin;->b()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v1

    const-string v2, "restricted"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/teleal/cling/model/types/Datatype;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Lorg/teleal/cling/support/model/DIDLObject;->e:Z

    :cond_2
    invoke-virtual {p2}, Lorg/teleal/cling/model/types/Datatype$Builtin;->b()Lorg/teleal/cling/model/types/Datatype;

    move-result-object p2

    const-string v1, "searchable"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Lorg/teleal/cling/model/types/Datatype;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    check-cast p3, Lorg/teleal/cling/support/model/DIDLContent;

    iget-object p2, p3, Lorg/teleal/cling/support/model/DIDLContent;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;

    invoke-direct {p2, v0, p1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ContainerHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/common/xml/SAXParser$Handler;)V

    return-void

    :cond_3
    const-string p1, "item"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->b(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/item/Item;

    move-result-object p1

    check-cast p3, Lorg/teleal/cling/support/model/DIDLContent;

    iget-object p2, p3, Lorg/teleal/cling/support/model/DIDLContent;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;

    invoke-direct {p2, v0, p1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$ItemHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/common/xml/SAXParser$Handler;)V

    return-void

    :cond_4
    const-string p1, "desc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p4}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->a(Lorg/xml/sax/Attributes;)Lorg/teleal/cling/support/model/DescMeta;

    move-result-object p1

    check-cast p3, Lorg/teleal/cling/support/model/DIDLContent;

    iget-object p2, p3, Lorg/teleal/cling/support/model/DIDLContent;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;

    invoke-direct {p2, v0, p1, p0}, Lorg/teleal/cling/support/contentdirectory/DIDLParser$DescMetaHandler;-><init>(Lorg/teleal/cling/support/contentdirectory/DIDLParser;Lorg/teleal/cling/support/model/DescMeta;Lorg/teleal/common/xml/SAXParser$Handler;)V

    :cond_5
    :goto_0
    return-void
.end method

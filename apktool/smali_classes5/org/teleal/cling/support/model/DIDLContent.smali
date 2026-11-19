.class public Lorg/teleal/cling/support/model/DIDLContent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/item/Item;

    iget-object v2, v1, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "object.item.audioItem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lorg/teleal/cling/support/model/item/AudioItem;->k:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lorg/teleal/cling/support/model/item/AudioItem;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v3, Lorg/teleal/cling/support/model/item/MusicTrack;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lorg/teleal/cling/support/model/item/MusicTrack;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v3, Lorg/teleal/cling/support/model/item/AudioBook;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lorg/teleal/cling/support/model/item/AudioBook;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/AudioBook;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object v3, Lorg/teleal/cling/support/model/item/AudioBroadcast;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Lorg/teleal/cling/support/model/item/AudioBroadcast;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/AudioBroadcast;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    sget-object v3, Lorg/teleal/cling/support/model/item/VideoItem;->k:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Lorg/teleal/cling/support/model/item/VideoItem;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    sget-object v3, Lorg/teleal/cling/support/model/item/Movie;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Lorg/teleal/cling/support/model/item/Movie;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/Movie;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    sget-object v3, Lorg/teleal/cling/support/model/item/VideoBroadcast;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Lorg/teleal/cling/support/model/item/VideoBroadcast;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/VideoBroadcast;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lorg/teleal/cling/support/model/item/MusicVideoClip;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Lorg/teleal/cling/support/model/item/MusicVideoClip;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    sget-object v3, Lorg/teleal/cling/support/model/item/ImageItem;->k:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v2, Lorg/teleal/cling/support/model/item/ImageItem;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lorg/teleal/cling/support/model/item/Photo;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v2, Lorg/teleal/cling/support/model/item/Photo;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/Photo;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    sget-object v3, Lorg/teleal/cling/support/model/item/PlaylistItem;->k:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v2, Lorg/teleal/cling/support/model/item/PlaylistItem;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/PlaylistItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    sget-object v3, Lorg/teleal/cling/support/model/item/TextItem;->k:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iget-object v3, v3, Lorg/teleal/cling/support/model/DIDLObject$Class;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lorg/teleal/cling/support/model/item/TextItem;

    invoke-direct {v2, v1}, Lorg/teleal/cling/support/model/item/TextItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    return-object v0
.end method

.class public Lorg/teleal/cling/support/model/item/MusicVideoClip;
.super Lorg/teleal/cling/support/model/item/VideoItem;
.source "SourceFile"


# static fields
.field public static final l:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem.musicVideoClip"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/MusicVideoClip;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>()V

    sget-object v0, Lorg/teleal/cling/support/model/item/MusicVideoClip;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 12
    sget-object p1, Lorg/teleal/cling/support/model/item/MusicVideoClip;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 13
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 0

    .line 8
    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 9
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/item/MusicVideoClip;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    return-void
.end method

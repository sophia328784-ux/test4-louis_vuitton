.class public Lorg/teleal/cling/support/model/item/Photo;
.super Lorg/teleal/cling/support/model/item/ImageItem;
.source "SourceFile"


# static fields
.field public static final l:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.imageItem.photo"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/Photo;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>()V

    .line 28
    sget-object v0, Lorg/teleal/cling/support/model/item/Photo;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 29
    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    sget-object p0, Lorg/teleal/cling/support/model/item/Photo;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iput-object p0, v0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    if-eqz p5, :cond_0

    new-instance p0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-direct {p0, p5}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLObject;->b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 0

    .line 24
    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 25
    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/support/model/item/Photo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    return-void
.end method

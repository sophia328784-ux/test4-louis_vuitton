.class public Lorg/teleal/cling/support/model/item/MusicTrack;
.super Lorg/teleal/cling/support/model/item/AudioItem;
.source "SourceFile"


# static fields
.field public static final l:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.musicTrack"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/MusicTrack;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>()V

    .line 41
    sget-object v0, Lorg/teleal/cling/support/model/item/MusicTrack;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 42
    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 1

    move-object v0, p6

    .line 39
    new-instance p6, Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-direct {p6, v0}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    sget-object p0, Lorg/teleal/cling/support/model/item/MusicTrack;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iput-object p0, v0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    if-eqz p5, :cond_0

    new-instance p0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-direct {p0, p5}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLObject;->b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_0
    if-eqz p6, :cond_1

    new-instance p0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {p0, p6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLObject;->a(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 0

    .line 34
    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 35
    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V
    .locals 0

    .line 36
    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 37
    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    return-void
.end method

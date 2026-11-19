.class public Lorg/teleal/cling/support/model/item/AudioBroadcast;
.super Lorg/teleal/cling/support/model/item/AudioItem;
.source "SourceFile"


# static fields
.field public static final l:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.audioBroadcast"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/AudioBroadcast;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>()V

    sget-object v0, Lorg/teleal/cling/support/model/item/AudioBroadcast;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 10
    sget-object p1, Lorg/teleal/cling/support/model/item/AudioBroadcast;->l:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 11
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    return-void
.end method

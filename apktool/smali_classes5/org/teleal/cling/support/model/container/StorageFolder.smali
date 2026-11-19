.class public Lorg/teleal/cling/support/model/container/StorageFolder;
.super Lorg/teleal/cling/support/model/container/Container;
.source "SourceFile"


# static fields
.field public static final p:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageFolder"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/container/StorageFolder;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 26
    sget-object v0, Lorg/teleal/cling/support/model/container/StorageFolder;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 27
    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 7

    sget-object v5, Lorg/teleal/cling/support/model/container/StorageFolder;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    if-eqz p6, :cond_0

    new-instance p0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-direct {p0, p6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, p0}, Lorg/teleal/cling/support/model/DIDLObject;->b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    .line 22
    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 23
    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/support/model/container/StorageFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/container/Container;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    return-void
.end method

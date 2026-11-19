.class public Lorg/teleal/cling/support/model/container/StorageVolume;
.super Lorg/teleal/cling/support/model/container/Container;
.source "SourceFile"


# static fields
.field public static final p:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageVolume"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/container/StorageVolume;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 65
    sget-object v0, Lorg/teleal/cling/support/model/container/StorageVolume;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    .line 66
    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLObject;->g:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 11

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    sget-object v9, Lorg/teleal/cling/support/model/container/StorageVolume;->p:Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    if-eqz v0, :cond_0

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-direct {p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_0
    if-eqz v1, :cond_1

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-direct {p1, v1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_1
    if-eqz v2, :cond_2

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-direct {p1, v2}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_2
    if-eqz v3, :cond_3

    new-instance p1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {p1, v3}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;->b(Lorg/teleal/cling/support/model/DIDLObject$Property;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 0

    .line 61
    iget-object p2, p2, Lorg/teleal/cling/support/model/DIDLObject;->a:Ljava/lang/String;

    .line 62
    invoke-direct/range {p0 .. p9}, Lorg/teleal/cling/support/model/container/StorageVolume;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/teleal/cling/support/model/StorageMedium;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/container/Container;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    return-void
.end method

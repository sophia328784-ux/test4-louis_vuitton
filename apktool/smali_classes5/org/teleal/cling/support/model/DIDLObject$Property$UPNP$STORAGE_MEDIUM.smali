.class public Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;
.super Lorg/teleal/cling/support/model/DIDLObject$Property;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property<",
        "Lorg/teleal/cling/support/model/StorageMedium;",
        ">;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 1

    const-string v0, "storageMedium"

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

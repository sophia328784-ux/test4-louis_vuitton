.class public Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;
.super Lorg/teleal/cling/support/model/DIDLObject$Property;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property<",
        "Lorg/teleal/cling/support/model/DIDLAttribute;",
        ">;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/teleal/cling/support/model/DIDLAttribute;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/DIDLAttribute;)V
    .locals 1

    const-string v0, "profileID"

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

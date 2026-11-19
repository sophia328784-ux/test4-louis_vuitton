.class public Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;
.super Lorg/teleal/cling/support/model/DIDLObject$Property;
.source "SourceFile"

# interfaces
.implements Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/support/model/DIDLObject$Property<",
        "Ljava/net/URI;",
        ">;",
        "Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const-string v0, "albumArtURI"

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property<",
            "Lorg/teleal/cling/support/model/DIDLAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/support/model/DIDLObject$Property;-><init>(Ljava/net/URI;Ljava/util/List;)V

    return-void
.end method

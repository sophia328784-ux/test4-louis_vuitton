.class public Lorg/teleal/cling/model/profile/ControlPointInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/profile/ControlPointInfo;-><init>(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpHeaders;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

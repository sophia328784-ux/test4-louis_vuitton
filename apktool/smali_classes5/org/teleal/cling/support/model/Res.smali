.class public Lorg/teleal/cling/support/model/Res;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p4, p0, Lorg/teleal/cling/support/model/Res;->a:Ljava/lang/String;

    .line 19
    iput-object p12, p0, Lorg/teleal/cling/support/model/Res;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p3, p0, Lorg/teleal/cling/support/model/Res;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p3, p0, Lorg/teleal/cling/support/model/Res;->a:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lorg/teleal/cling/support/model/Res;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 11
    new-instance v0, Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    move-object v0, p1

    new-instance p1, Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-direct {p1, v0}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

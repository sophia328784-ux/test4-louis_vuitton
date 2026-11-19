.class public Lorg/teleal/cling/model/message/header/ContentTypeHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader<",
        "Lorg/teleal/common/util/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lorg/teleal/common/util/MimeType;

.field public static final d:Lorg/teleal/common/util/MimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "text/xml"

    invoke-static {v0}, Lorg/teleal/common/util/MimeType;->a(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    const-string v0, "text/xml;charset=\"utf-8\""

    invoke-static {v0}, Lorg/teleal/common/util/MimeType;->a(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->d:Lorg/teleal/common/util/MimeType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    sget-object v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->c:Lorg/teleal/common/util/MimeType;

    iput-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/common/util/MimeType;

    invoke-virtual {p0}, Lorg/teleal/common/util/MimeType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/teleal/common/util/MimeType;->a(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method

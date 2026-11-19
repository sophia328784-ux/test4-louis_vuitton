.class public Lorg/teleal/cling/model/message/header/HostHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader<",
        "Lorg/teleal/cling/model/types/HostPort;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    const/16 v0, 0x76c

    iput v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->c:I

    new-instance v1, Lorg/teleal/cling/model/types/HostPort;

    const-string v2, "239.255.255.250"

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    const/16 v0, 0x76c

    .line 18
    iput v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->c:I

    .line 19
    new-instance v0, Lorg/teleal/cling/model/types/HostPort;

    const-string v1, "239.255.255.250"

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    const/16 v0, 0x76c

    .line 22
    iput v0, p0, Lorg/teleal/cling/model/message/header/HostHeader;->c:I

    .line 23
    new-instance v0, Lorg/teleal/cling/model/types/HostPort;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/model/types/HostPort;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/HostPort;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/teleal/cling/model/message/header/HostHeader;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/teleal/cling/model/types/HostPort;

    iget v2, p0, Lorg/teleal/cling/model/message/header/HostHeader;->c:I

    invoke-direct {v1, v0, v2}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    const-string v1, "Invalid HOST header value, can\'t parse port: "

    const-string v2, " - "

    invoke-static {v1, p1, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/teleal/cling/model/types/HostPort;

    iget v1, p0, Lorg/teleal/cling/model/message/header/HostHeader;->c:I

    invoke-direct {v0, p1, v1}, Lorg/teleal/cling/model/types/HostPort;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method

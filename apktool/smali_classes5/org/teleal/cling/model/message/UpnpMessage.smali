.class public abstract Lorg/teleal/cling/model/message/UpnpMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lorg/teleal/cling/model/message/UpnpOperation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lorg/teleal/cling/model/message/UpnpOperation;

.field public c:Lorg/teleal/cling/model/message/UpnpHeaders;

.field public d:Ljava/lang/Object;

.field public e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpMessage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->a:I

    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    iget-object v0, p1, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iget p1, p1, Lorg/teleal/cling/model/message/UpnpMessage;->a:I

    iput p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->a:I

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpOperation;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->a:I

    .line 40
    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 41
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 42
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->a:I

    .line 45
    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 46
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    .line 47
    iput-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 48
    iput-object p3, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    return-void
.end method

.method public final c()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :try_start_1
    check-cast p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->e:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    check-cast p0, [B

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->c:Lorg/teleal/cling/model/message/UpnpHeaders;

    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v1, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->k(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/common/util/MimeType;

    iget-object p0, p0, Lorg/teleal/common/util/MimeType;->c:Ljava/util/Map;

    const-string v0, "charset"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->d:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->b:Lorg/teleal/cling/model/message/UpnpOperation;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

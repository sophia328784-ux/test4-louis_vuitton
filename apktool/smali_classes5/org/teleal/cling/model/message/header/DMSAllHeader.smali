.class public Lorg/teleal/cling/model/message/header/DMSAllHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader<",
        "Lorg/teleal/cling/model/types/NotificationSubtype;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->DMSALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    iput-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader;->a:Ljava/lang/Object;

    check-cast p0, Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lorg/teleal/cling/model/types/NotificationSubtype;->DMSALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/NotificationSubtype;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Invalid ST header value (not "

    const-string v1, "): "

    invoke-static {v0, p0, v1, p1}, Lct0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

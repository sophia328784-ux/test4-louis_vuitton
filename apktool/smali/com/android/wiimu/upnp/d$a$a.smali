.class Lcom/android/wiimu/upnp/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/d$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/d$a;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/upnp/d$a$a;->a:Lcom/android/wiimu/upnp/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/upnp/d$a$a;->a:Lcom/android/wiimu/upnp/d$a;

    iget-object p0, p0, Lcom/android/wiimu/upnp/d$a;->b:Lb/c;

    iget-object p0, p0, Lb/c;->e:Lb/e;

    iget-object p0, p0, Lb/e;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :cond_0
    sget p0, La/a;->a:I

    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wiimu/upnp/d$a$a;->a:Lcom/android/wiimu/upnp/d$a;

    iget-object v0, p0, Lcom/android/wiimu/upnp/d$a;->b:Lb/c;

    iget-object v1, v0, Lb/c;->e:Lb/e;

    iget-object v1, v1, Lb/e;->b:Ljava/lang/String;

    sget v1, La/a;->a:I

    iget-object p0, p0, Lcom/android/wiimu/upnp/d$a;->c:Lcom/android/wiimu/upnp/d;

    invoke-static {p0, v0, p1}, Lcom/android/wiimu/upnp/d;->a(Lcom/android/wiimu/upnp/d;Lb/c;Ljava/util/Map;)V

    return-void
.end method

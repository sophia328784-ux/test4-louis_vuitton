.class LZjTIAZ/XKbmNt$XGFGPq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static ucLGiJ:Ljava/lang/String;


# instance fields
.field final synthetic ClDGZT:Lorg/json/JSONObject;

.field final synthetic ZRQiWB:LZjTIAZ/XKbmNt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LZjTIAZ/XKbmNt$XGFGPq;->CMJ(Z)V

    return-void
.end method

.method public constructor <init>(LZjTIAZ/XKbmNt;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZjTIAZ/XKbmNt$XGFGPq;->ZRQiWB:LZjTIAZ/XKbmNt;

    iput-object p2, p0, LZjTIAZ/XKbmNt$XGFGPq;->ClDGZT:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic CMJ(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LZjTIAZ/XKbmNt$XGFGPq;->CMJ(Z)V

    :cond_0
    const-string p0, "HD|_VV\u000fT~\u0011RYA\u0016sY]K"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XKbmNt$XGFGPq;->ucLGiJ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LZjTIAZ/XKbmNt$XGFGPq;->ClDGZT:Lorg/json/JSONObject;

    iget-object p0, p0, LZjTIAZ/XKbmNt$XGFGPq;->ZRQiWB:LZjTIAZ/XKbmNt;

    if-eqz v0, :cond_0

    iget-object p0, p0, LZjTIAZ/XKbmNt;->a:LZjTIAZ/JOGAgw$JOGAgw;

    invoke-interface {p0, v0}, LZjTIAZ/JOGAgw$JOGAgw;->c(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iget-object p0, p0, LZjTIAZ/XKbmNt;->a:LZjTIAZ/JOGAgw$JOGAgw;

    invoke-interface {p0}, LZjTIAZ/JOGAgw$JOGAgw;->a()V

    return-void
.end method

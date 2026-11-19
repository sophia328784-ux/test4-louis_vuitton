.class LZjTIAZ/ECIjpk$DXhAJK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/ECIjpk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FocusObserver"
.end annotation


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field public final synthetic a:LZjTIAZ/ECIjpk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010gM@QV\u0006D@Yt|y={iE^f"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ECIjpk$DXhAJK;->b:Ljava/lang/String;

    const-string v0, "M|Su\\QZSRYTRRSzYGKLI_"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/ECIjpk$DXhAJK;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LZjTIAZ/ECIjpk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZjTIAZ/ECIjpk$DXhAJK;->a:LZjTIAZ/ECIjpk;

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    iget-object p0, p0, LZjTIAZ/ECIjpk$DXhAJK;->a:LZjTIAZ/ECIjpk;

    iget-object p0, p0, LZjTIAZ/ECIjpk;->a:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    :try_start_0
    instance-of p1, p2, LZjTIAZ/EACilt;

    if-eqz p1, :cond_1

    check-cast p2, LZjTIAZ/EACilt;

    iget p1, p2, LZjTIAZ/EACilt;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, LZjTIAZ/EACilt;

    iget v1, p2, LZjTIAZ/EACilt;->a:I

    iget-object v2, p2, LZjTIAZ/EACilt;->f:Ljava/lang/String;

    iget v3, p2, LZjTIAZ/EACilt;->b:I

    iget v4, p2, LZjTIAZ/EACilt;->c:I

    iget v5, p2, LZjTIAZ/EACilt;->d:I

    iget v6, p2, LZjTIAZ/EACilt;->e:I

    invoke-direct/range {v0 .. v6}, LZjTIAZ/EACilt;-><init>(ILjava/lang/String;IIII)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object p1, LZjTIAZ/ECIjpk$DXhAJK;->c:Ljava/lang/String;

    sget-object p2, LZjTIAZ/ECIjpk$DXhAJK;->b:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

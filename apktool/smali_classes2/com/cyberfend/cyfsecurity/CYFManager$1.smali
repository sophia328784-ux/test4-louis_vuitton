.class Lcom/cyberfend/cyfsecurity/CYFManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static GVIEUx:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSEK/IfH/NGV;"
        }
    .end annotation
.end field

.field static JsfVvW:Ljava/lang/String;


# instance fields
.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lshort;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyberfend/cyfsecurity/CYFManager$1;->CuP(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFManager$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic CuP(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFManager$1;->CuP(Z)V

    :cond_0
    const-string p0, "KWg\\A\u0012KUcX[[\u0015SY[[S[XDAA"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFManager$1;->JsfVvW:Ljava/lang/String;

    const-string p0, "M|S~R\\NGtC"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFManager$1;->GVIEUx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    sget-boolean p0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->b:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->a:Lcom/cyberfend/cyfsecurity/SensorDataBuilder;

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->encryptKeyN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFManager$1;->GVIEUx:Ljava/lang/String;

    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFManager$1;->JsfVvW:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

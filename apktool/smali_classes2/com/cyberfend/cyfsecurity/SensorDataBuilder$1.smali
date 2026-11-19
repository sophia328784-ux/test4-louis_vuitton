.class Lcom/cyberfend/cyfsecurity/SensorDataBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static GDMRFG:Ljava/lang/String;

.field static XcbxXI:Ljava/lang/String;


# instance fields
.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/SensorDataBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyberfend/cyfsecurity/SensorDataBuilder$1;->uwO(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/cyberfend/cyfsecurity/SensorDataBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/SensorDataBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic uwO(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/SensorDataBuilder$1;->uwO(Z)V

    :cond_0
    const-string p0, "]@{@\\@kAePwI\\ZS]["

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder$1;->XcbxXI:Ljava/lang/String;

    const-string p0, "gK|GZSCIkT~YLx\u0017^HCGII\u0014\u000f"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder$1;->GDMRFG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder$1;->ZRQiWB:Lcom/cyberfend/cyfsecurity/SensorDataBuilder;

    invoke-virtual {p0}, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->initializeKeyN()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

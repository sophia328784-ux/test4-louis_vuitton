.class final Lcom/cyberfend/cyfsecurity/SensorDataBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cyberfend/cyfsecurity/SensorDataBuilder;

.field public static volatile b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cyberfend/cyfsecurity/SensorDataBuilder;->a:Lcom/cyberfend/cyfsecurity/SensorDataBuilder;

    return-void
.end method


# virtual methods
.method public synchronized native buildN(Ljava/util/ArrayList;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public synchronized native decryptN()V
.end method

.method public synchronized native encryptKeyN()V
.end method

.method public synchronized native initializeKeyN()V
.end method

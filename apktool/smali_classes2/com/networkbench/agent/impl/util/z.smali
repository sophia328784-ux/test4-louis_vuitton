.class public Lcom/networkbench/agent/impl/util/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SM4/ECB/PKCS5Padding"

.field private static final b:Lcom/networkbench/agent/impl/c/e;

.field private static d:Lcom/networkbench/agent/impl/util/z;


# instance fields
.field private c:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/z;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/util/z;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/z;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/z;->d:Lcom/networkbench/agent/impl/util/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/util/z;
    .locals 1

    .line 29
    sget-object v0, Lcom/networkbench/agent/impl/util/z;->d:Lcom/networkbench/agent/impl/util/z;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SM4/ECB/PKCS5Padding"

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->d(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/i;->a(Ljava/lang/String;I[B)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/z;->c:Ljavax/crypto/Cipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/networkbench/agent/impl/util/z;->b:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "error create cipher"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/z;->c:Ljavax/crypto/Cipher;

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/util/d;

    const-string p1, "error encrypt ecb padding, cipher is null"

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

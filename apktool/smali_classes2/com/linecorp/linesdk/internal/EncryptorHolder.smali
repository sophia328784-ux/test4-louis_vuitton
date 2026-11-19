.class public abstract Lcom/linecorp/linesdk/internal/EncryptorHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;
    }
.end annotation


# static fields
.field public static final a:Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher;

.field public static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->a:Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->b:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

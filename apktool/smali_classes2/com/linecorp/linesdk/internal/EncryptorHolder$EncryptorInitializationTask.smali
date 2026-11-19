.class Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/EncryptorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptorInitializationTask"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->a:Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher;

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/EncryptorHolder$EncryptorInitializationTask;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher;->e(Landroid/content/Context;)V

    return-void
.end method

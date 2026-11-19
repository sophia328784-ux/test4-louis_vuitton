.class abstract Landroidx/media3/ui/BidiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/common/base/Splitter;

.field public static final b:Lcom/google/common/base/Splitter;

.field public static final c:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\n"

    invoke-static {v0}, Lcom/google/common/base/Splitter;->b(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v1

    sput-object v1, Landroidx/media3/ui/BidiUtils;->a:Lcom/google/common/base/Splitter;

    const-string v1, "\r\n"

    invoke-static {v1}, Lcom/google/common/base/Splitter;->b(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v1

    sput-object v1, Landroidx/media3/ui/BidiUtils;->b:Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Joiner;

    invoke-direct {v1, v0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroidx/media3/ui/BidiUtils;->c:Lcom/google/common/base/Joiner;

    return-void
.end method

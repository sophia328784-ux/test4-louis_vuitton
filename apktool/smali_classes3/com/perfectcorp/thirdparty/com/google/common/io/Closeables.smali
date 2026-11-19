.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/io/Closeables;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/perfectcorp/thirdparty/com/google/common/io/Closeables;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/io/Closeables;->a:Ljava/util/logging/Logger;

    return-void
.end method

.class public final Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "",
        "isInitialize",
        "<init>",
        "(Z)V",
        "DY-Sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    const-string v0, "DYSdk is not initialized"

    const-string v1, "DYSdk is already initialized"

    if-eqz p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynamicyield/sdk/wrapper/core/models/exception/InitializeException;->b:Ljava/lang/String;

    return-object p0
.end method

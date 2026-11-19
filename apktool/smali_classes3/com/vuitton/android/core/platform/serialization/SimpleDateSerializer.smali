.class public final Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Ljava/util/Date;",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;


# instance fields
.field public final synthetic a:Lcom/vuitton/android/core/platform/serialization/DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;

    invoke-direct {v0}, Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;-><init>()V

    sput-object v0, Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;->b:Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vuitton/android/core/platform/serialization/DateSerializer;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Lcom/vuitton/android/core/platform/serialization/DateSerializer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;->a:Lcom/vuitton/android/core/platform/serialization/DateSerializer;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;->a:Lcom/vuitton/android/core/platform/serialization/DateSerializer;

    iget-object p0, p0, Lcom/vuitton/android/core/platform/serialization/DateSerializer;->c:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;->a:Lcom/vuitton/android/core/platform/serialization/DateSerializer;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/core/platform/serialization/DateSerializer;->f(Lkotlinx/serialization/encoding/Decoder;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/core/platform/serialization/SimpleDateSerializer;->a:Lcom/vuitton/android/core/platform/serialization/DateSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/core/platform/serialization/DateSerializer;->g(Lkotlinx/serialization/encoding/Encoder;Ljava/util/Date;)V

    return-void
.end method

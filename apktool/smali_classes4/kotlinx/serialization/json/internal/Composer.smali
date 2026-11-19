.class public Lkotlinx/serialization/json/internal/Composer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/Composer;",
        "",
        "Lkotlinx/serialization/json/internal/InternalJsonWriter;",
        "writer",
        "<init>",
        "(Lkotlinx/serialization/json/internal/InternalJsonWriter;)V",
        "kotlinx-serialization-json"
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
.field public final a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

.field public b:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/InternalJsonWriter;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/Composer;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->b:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->b:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->b:Z

    return-void
.end method

.method public d(B)V
    .locals 2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void
.end method

.method public final e(C)V
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {p0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->a(C)V

    return-void
.end method

.method public f(I)V
    .locals 2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void
.end method

.method public g(J)V
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {p0, p1, p2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {p0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->c(Ljava/lang/String;)V

    return-void
.end method

.method public i(S)V
    .locals 2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->a:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {p0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->b(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

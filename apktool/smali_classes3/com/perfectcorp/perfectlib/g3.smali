.class public final synthetic Lcom/perfectcorp/perfectlib/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/g3;->b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    iput p2, p0, Lcom/perfectcorp/perfectlib/g3;->c:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/g3;->d:Ljava/util/List;

    iput-boolean p4, p0, Lcom/perfectcorp/perfectlib/g3;->e:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/g3;->d:Ljava/util/List;

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/g3;->e:Z

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/g3;->b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    iget p0, p0, Lcom/perfectcorp/perfectlib/g3;->c:I

    invoke-virtual {v2, v0, p0, v1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->o(Ljava/util/List;IZ)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.class Lcom/networkbench/com/google/gson/internal/UnsafeAllocator$1;
.super Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;->create()Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/UnsafeAllocator$1;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/networkbench/com/google/gson/internal/UnsafeAllocator$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/UnsafeAllocator$1;->a:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/UnsafeAllocator$1;->b:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

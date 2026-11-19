.class Lcom/networkbench/com/google/gson/internal/ConstructorConstructor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/com/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/networkbench/com/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/networkbench/com/google/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

.field private final d:Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;


# direct methods
.method public constructor <init>(Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor$4;->c:Lcom/networkbench/com/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor$4;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor$4;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;->create()Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor$4;->d:Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor$4;->d:Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor$4;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/ConstructorConstructor$4;->b:Ljava/lang/reflect/Type;

    const-string v1, ". Register an InstanceCreator with Gson for this type may fix this problem."

    const-string v2, "Unable to invoke no-args constructor for "

    invoke-static {v2, p0, v1, v0}, Lbm;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.class final synthetic Lcom/google/ar/core/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/function/Consumer;

.field private final synthetic b:Lcom/google/ar/core/ArCoreApk$Availability;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/j;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/google/ar/core/j;->b:Lcom/google/ar/core/ArCoreApk$Availability;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ar/core/j;->a:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/google/ar/core/j;->b:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

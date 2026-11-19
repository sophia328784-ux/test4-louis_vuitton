.class final synthetic Lcom/google/ar/core/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ar/core/n;->a:J

    iput-wide p3, p0, Lcom/google/ar/core/n;->b:J

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/n;->b:J

    check-cast p1, Lcom/google/ar/core/ArCoreApk$Availability;

    iget-wide v2, p0, Lcom/google/ar/core/n;->a:J

    invoke-static {v2, v3, v0, v1, p1}, Lcom/google/ar/core/ArCoreApkJniAdapter;->a(JJLcom/google/ar/core/ArCoreApk$Availability;)V

    return-void
.end method

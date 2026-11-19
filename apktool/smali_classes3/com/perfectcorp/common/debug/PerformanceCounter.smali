.class public abstract Lcom/perfectcorp/common/debug/PerformanceCounter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/debug/PerformanceCounter$PrinterReporter;,
        Lcom/perfectcorp/common/debug/PerformanceCounter$Reporter;,
        Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;
    }
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public static final c:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;


# instance fields
.field public final a:Lcom/perfectcorp/common/debug/PerformanceCounter$Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/common/debug/PerformanceCounter$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    new-instance v0, Lcom/perfectcorp/common/debug/PerformanceCounter$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->c:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;
.end method

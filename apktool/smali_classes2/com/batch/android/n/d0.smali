.class public final Lcom/batch/android/n/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/d0;

    invoke-direct {v0}, Lcom/batch/android/n/d0;-><init>()V

    sput-object v0, Lcom/batch/android/n/d0;->a:Lcom/batch/android/n/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/batch/android/e/k0;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 30
    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    const-class v1, Lcom/batch/android/e/k0;

    invoke-virtual {v0, v1}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/k0;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Lcom/batch/android/e/k0;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    const-class v1, Lcom/batch/android/e/k0;

    invoke-virtual {v0, v1}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/k0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/e/k0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object p0

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0
.end method

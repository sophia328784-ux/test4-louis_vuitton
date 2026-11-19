.class public final Lcom/batch/android/n/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/l;

    invoke-direct {v0}, Lcom/batch/android/n/l;-><init>()V

    sput-object v0, Lcom/batch/android/n/l;->a:Lcom/batch/android/n/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/batch/android/e/s;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 31
    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    const-class v1, Lcom/batch/android/e/s;

    invoke-virtual {v0, v1}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/s;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Lcom/batch/android/e/s;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    const-class v1, Lcom/batch/android/e/s;

    invoke-virtual {v0, v1}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/s;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/batch/android/e/s;

    invoke-direct {v0, p0}, Lcom/batch/android/e/s;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

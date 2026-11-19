.class public final Lcom/batch/android/n/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/x;

    invoke-direct {v0}, Lcom/batch/android/n/x;-><init>()V

    sput-object v0, Lcom/batch/android/n/x;->a:Lcom/batch/android/n/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/batch/android/v0/i;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    const-class v1, Lcom/batch/android/v0/i;

    invoke-virtual {v0, v1}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/batch/android/v0/i;->i()Lcom/batch/android/v0/i;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final b()Lcom/batch/android/v0/i;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    const-class v1, Lcom/batch/android/v0/i;

    invoke-virtual {v0, v1}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/i;

    return-object v0
.end method

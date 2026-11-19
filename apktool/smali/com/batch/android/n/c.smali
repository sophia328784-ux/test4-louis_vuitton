.class public final Lcom/batch/android/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/batch/android/n/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/batch/android/n/c;

    invoke-direct {v0}, Lcom/batch/android/n/c;-><init>()V

    sput-object v0, Lcom/batch/android/n/c;->a:Lcom/batch/android/n/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/batch/android/v0/c;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    const-class v1, Lcom/batch/android/v0/c;

    invoke-virtual {v0, v1}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/batch/android/v0/c;->i()Lcom/batch/android/v0/c;

    move-result-object v0

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final b()Lcom/batch/android/v0/c;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/batch/android/m/a;->b()Lcom/batch/android/m/a;

    move-result-object v0

    const-class v1, Lcom/batch/android/v0/c;

    invoke-virtual {v0, v1}, Lcom/batch/android/m/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/v0/c;

    return-object v0
.end method

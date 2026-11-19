.class public final Lcom/batch/android/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z = false

.field public static final b:Ljava/lang/String; = "com.batch.android"

.field public static final c:Ljava/lang/String; = "release"

.field public static final d:Ljava/lang/Integer;

.field public static final e:Z = false

.field public static final f:Z = false

.field public static final g:Ljava/lang/Integer;

.field public static final h:Ljava/lang/String; = "3.1.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x137

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a/e;->d:Ljava/lang/Integer;

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/batch/android/a/e;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

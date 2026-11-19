.class final Lcom/google/android/gms/internal/gtm/zzlk;
.super Lcom/google/android/gms/internal/gtm/zzlh;
.source "SourceFile"


# static fields
.field public static final i:[Ljava/lang/Object;

.field public static final j:Lcom/google/android/gms/internal/gtm/zzlk;


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:[Ljava/lang/Object;

.field public final transient g:I

.field public final transient h:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzlk;->i:[Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzlk;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zzlk;-><init>([Ljava/lang/Object;[Ljava/lang/Object;III)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzlk;->j:Lcom/google/android/gms/internal/gtm/zzlk;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzlk;->d:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzlk;->e:I

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzlk;->f:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/gtm/zzlk;->g:I

    iput p5, p0, Lcom/google/android/gms/internal/gtm/zzlk;->h:I

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzlk;->d:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzlk;->h:I

    invoke-static {v1, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzlk;->f:[Ljava/lang/Object;

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, -0x3361d2af

    mul-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x1b873593

    mul-long/2addr v1, v3

    long-to-int v1, v1

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzlk;->g:I

    and-int/2addr v1, v2

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzlk;->h:I

    return p0
.end method

.method public final h()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzlk;->e:I

    return p0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzlk;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzlh;->c:Lcom/google/android/gms/internal/gtm/zzlg;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzlg;->c:Lcom/google/android/gms/internal/gtm/zzln;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzlk;->h:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzlj;->f:Lcom/google/android/gms/internal/gtm/zzlg;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzlj;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzlk;->d:[Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzlj;-><init>([Ljava/lang/Object;I)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzlh;->c:Lcom/google/android/gms/internal/gtm/zzlg;

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzlg;->m(I)Lcom/google/android/gms/internal/gtm/zzln;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzlk;->h:I

    return p0
.end method

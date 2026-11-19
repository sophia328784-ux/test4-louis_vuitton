.class final Lcom/google/android/gms/internal/gtm/zzlf;
.super Lcom/google/android/gms/internal/gtm/zzlg;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/google/android/gms/internal/gtm/zzlg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzlg;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzlf;->f:Lcom/google/android/gms/internal/gtm/zzlg;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzlf;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzlf;->e:I

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->f:Lcom/google/android/gms/internal/gtm/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzld;->h()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzlf;->d:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->e:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzkz;->a(II)V

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->d:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->f:Lcom/google/android/gms/internal/gtm/zzlg;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->f:Lcom/google/android/gms/internal/gtm/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzld;->h()I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->f:Lcom/google/android/gms/internal/gtm/zzlg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzld;->i()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l(II)Lcom/google/android/gms/internal/gtm/zzlg;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->e:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/gtm/zzkz;->b(III)V

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->d:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->f:Lcom/google/android/gms/internal/gtm/zzlg;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzlg;->l(II)Lcom/google/android/gms/internal/gtm/zzlg;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzlf;->e:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzlf;->l(II)Lcom/google/android/gms/internal/gtm/zzlg;

    move-result-object p0

    return-object p0
.end method

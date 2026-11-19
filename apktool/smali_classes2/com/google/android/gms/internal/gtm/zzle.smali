.class final Lcom/google/android/gms/internal/gtm/zzle;
.super Lcom/google/android/gms/internal/gtm/zzlb;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/gms/internal/gtm/zzlg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzlg;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zzlb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzle;->d:Lcom/google/android/gms/internal/gtm/zzlg;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzle;->d:Lcom/google/android/gms/internal/gtm/zzlg;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

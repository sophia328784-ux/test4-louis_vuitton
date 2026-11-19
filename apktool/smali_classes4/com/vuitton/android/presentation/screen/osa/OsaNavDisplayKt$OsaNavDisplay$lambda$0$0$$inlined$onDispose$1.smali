.class public final Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;->b:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;->a:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->t()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;->b:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->t()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->t()V

    return-void
.end method

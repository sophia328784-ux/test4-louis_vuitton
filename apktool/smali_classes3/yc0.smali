.class public final synthetic Lyc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/Lazy;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lyc0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lyc0;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/presentation/utils/MockUtilsKt;->a:Lcom/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$1;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/utils/MockUtilsKt;->a:Lcom/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$1;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

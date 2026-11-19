.class public final Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;
.super Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Detail"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes;",
        "Lkotlinx/serialization/KSerializer;",
        "serializer",
        "()Lkotlinx/serialization/KSerializer;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;

.field public static final synthetic a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;->INSTANCE:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lul0;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lul0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;->a:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    return-object p0
.end method

.class Lkotlin/reflect/jvm/internal/DescriptorKProperty2$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKProperty2;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty2$$Lambda$1;->b:Lkotlin/reflect/jvm/internal/DescriptorKProperty2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty2;->r:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty2$$Lambda$1;->b:Lkotlin/reflect/jvm/internal/DescriptorKProperty2;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty;->K()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method

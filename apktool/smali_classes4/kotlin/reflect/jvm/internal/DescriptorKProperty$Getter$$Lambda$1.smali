.class Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter$$Lambda$1;->b:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;->k:[Lkotlin/reflect/KProperty;

    const/4 v0, 0x1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter$$Lambda$1;->b:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/DescriptorKPropertyKt;->a(Lkotlin/reflect/jvm/internal/DescriptorKProperty$Accessor;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    return-object p0
.end method

package ${package}.init;

@EventBusSubscriber
public class EntityAnimationFactory {

	@SubscribeEvent
	public static void onEntityTick(EntityTickEvent.Pre event) {
	if (event != null && event.getEntity() != null) {
	<#list animatedentitys as syncable>
	if (event.getEntity() instanceof ${syncable.getModElement().getName()}Entity syncable) {
		String animation = syncable.getSyncedAnimation();
		if (!animation.equals("undefined")) {
			syncable.setAnimation("undefined");
			syncable.animationprocedure = animation;
			}
		}
	</#list>
		}
	}

}
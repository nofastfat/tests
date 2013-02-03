package {
import flash.display.Sprite;

import starling.core.Starling;

public class ImageSkewTest extends Sprite {
	private var _starling : Starling;

	public function ImageSkewTest() {
		_starling = new Starling(Game, stage);
		_starling.start();
	}
}
}
import starling.display.Image;
import starling.display.Sprite;
import starling.textures.Texture;
import starling.textures.TextureAtlas;
import starling.utils.deg2rad;

class Game extends Sprite {

	[Embed(source = "./assets/ax.png")]
	public static const axTexture : Class;
	[Embed(source = "./assets/ax.xml", mimeType = "application/octet-stream")]
	public static const axXml : Class;

	public function Game() {
		var texture : Texture = Texture.fromBitmap(new axTexture());
		var xml : XML = XML(new axXml());
		var atlas : TextureAtlas = new TextureAtlas(texture, xml);
		var img : Image = new Image(atlas.getTexture("ax"));

		img.scaleX = 55.9357 / 100;
		img.scaleY = 83.1467 / 100;
		img.skewX = deg2rad(-135.1252);
		img.skewY = deg2rad(-151.4373); 

		addChild(img);
		img.x = img.y = 50;
	}
}

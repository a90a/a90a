package tiles;

import org.apache.velocity.app.event.ReferenceInsertionEventHandler.referenceInsertExecutor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class my {

		@RequestMapping(value ='/test')
		public String myview() {
			return 'myview';
		}
}
